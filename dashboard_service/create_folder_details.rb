# Copyright (c) 2016, 2024, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

# NOTE: This class is auto generated by OracleSDKGenerator. DO NOT EDIT. API Version: 20190325
require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties used in folder create operations.
  class DataCatalog::Models::CreateFolderDetails
    HARVEST_STATUS_ENUM = [
      HARVEST_STATUS_COMPLETE = 'COMPLETE'.freeze,
      HARVEST_STATUS_ERROR = 'ERROR'.freeze,
      HARVEST_STATUS_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      HARVEST_STATUS_DEFERRED = 'DEFERRED'.freeze
    ].freeze

    # **[Required]** A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Optional user friendly business name of the folder. If set, this supplements the harvested display name of the object.
    # @return [String]
    attr_accessor :business_name

    # Detailed description of a folder.
    # @return [String]
    attr_accessor :description

    # The list of customized properties along with the values for this object
    # @return [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>]
    attr_accessor :custom_property_members

    # A map of maps that contains the properties which are specific to the folder type. Each folder type
    # definition defines it's set of required and optional properties. The map keys are category names and the
    # values are maps of property name to property value. Every property is contained inside of a category. Most
    # folders have required properties within the \"default\" category. To determine the set of optional and
    # required properties for a folder type, a query can be done on '/types?type=folder' that returns a
    # collection of all folder types. The appropriate folder type, which includes definitions of all of
    # it's properties, can be identified from this collection.
    # Example: `{\"properties\": { \"default\": { \"key1\": \"value1\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # The key of the containing folder or null if there isn't a parent folder.
    # @return [String]
    attr_accessor :parent_folder_key

    # **[Required]** Last modified timestamp of this object in the external system.
    # @return [DateTime]
    attr_accessor :time_external

    # The job key of the harvest process that updated the folder definition from the source system.
    # @return [String]
    attr_accessor :last_job_key

    # Folder harvesting status.
    # @return [String]
    attr_reader :harvest_status

    # Type key of the object. Type keys can be found via the '/types' endpoint.
    # @return [String]
    attr_accessor :type_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'business_name': :'businessName',
        'description': :'description',
        'custom_property_members': :'customPropertyMembers',
        'properties': :'properties',
        'parent_folder_key': :'parentFolderKey',
        'time_external': :'timeExternal',
        'last_job_key': :'lastJobKey',
        'harvest_status': :'harvestStatus',
        'type_key': :'typeKey'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'business_name': :'String',
        'description': :'String',
        'custom_property_members': :'Array<OCI::DataCatalog::Models::CustomPropertySetUsage>',
        'properties': :'Hash<String, Hash<String, String>>',
        'parent_folder_key': :'String',
        'time_external': :'DateTime',
        'last_job_key': :'String',
        'harvest_status': :'String',
        'type_key': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :business_name The value to assign to the {#business_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>] :custom_property_members The value to assign to the {#custom_property_members} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    # @option attributes [String] :parent_folder_key The value to assign to the {#parent_folder_key} property
    # @option attributes [DateTime] :time_external The value to assign to the {#time_external} property
    # @option attributes [String] :last_job_key The value to assign to the {#last_job_key} property
    # @option attributes [String] :harvest_status The value to assign to the {#harvest_status} property
    # @option attributes [String] :type_key The value to assign to the {#type_key} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.business_name = attributes[:'businessName'] if attributes[:'businessName']

      raise 'You cannot provide both :businessName and :business_name' if attributes.key?(:'businessName') && attributes.key?(:'business_name')

      self.business_name = attributes[:'business_name'] if attributes[:'business_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.custom_property_members = attributes[:'customPropertyMembers'] if attributes[:'customPropertyMembers']

      raise 'You cannot provide both :customPropertyMembers and :custom_property_members' if attributes.key?(:'customPropertyMembers') && attributes.key?(:'custom_property_members')

      self.custom_property_members = attributes[:'custom_property_members'] if attributes[:'custom_property_members']

      self.properties = attributes[:'properties'] if attributes[:'properties']

      self.parent_folder_key = attributes[:'parentFolderKey'] if attributes[:'parentFolderKey']

      raise 'You cannot provide both :parentFolderKey and :parent_folder_key' if attributes.key?(:'parentFolderKey') && attributes.key?(:'parent_folder_key')

      self.parent_folder_key = attributes[:'parent_folder_key'] if attributes[:'parent_folder_key']

      self.time_external = attributes[:'timeExternal'] if attributes[:'timeExternal']

      raise 'You cannot provide both :timeExternal and :time_external' if attributes.key?(:'timeExternal') && attributes.key?(:'time_external')

      self.time_external = attributes[:'time_external'] if attributes[:'time_external']

      self.last_job_key = attributes[:'lastJobKey'] if attributes[:'lastJobKey']

      raise 'You cannot provide both :lastJobKey and :last_job_key' if attributes.key?(:'lastJobKey') && attributes.key?(:'last_job_key')

      self.last_job_key = attributes[:'last_job_key'] if attributes[:'last_job_key']

      self.harvest_status = attributes[:'harvestStatus'] if attributes[:'harvestStatus']

      raise 'You cannot provide both :harvestStatus and :harvest_status' if attributes.key?(:'harvestStatus') && attributes.key?(:'harvest_status')

      self.harvest_status = attributes[:'harvest_status'] if attributes[:'harvest_status']

      self.type_key = attributes[:'typeKey'] if attributes[:'typeKey']

      raise 'You cannot provide both :typeKey and :type_key' if attributes.key?(:'typeKey') && attributes.key?(:'type_key')

      self.type_key = attributes[:'type_key'] if attributes[:'type_key']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] harvest_status Object to be assigned
    def harvest_status=(harvest_status)
      raise "Invalid value for 'harvest_status': this must be one of the values in HARVEST_STATUS_ENUM." if harvest_status && !HARVEST_STATUS_ENUM.include?(harvest_status)

      @harvest_status = harvest_status
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        business_name == other.business_name &&
        description == other.description &&
        custom_property_members == other.custom_property_members &&
        properties == other.properties &&
        parent_folder_key == other.parent_folder_key &&
        time_external == other.time_external &&
        last_job_key == other.last_job_key &&
        harvest_status == other.harvest_status &&
        type_key == other.type_key
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, business_name, description, custom_property_members, properties, parent_folder_key, time_external, last_job_key, harvest_status, type_key].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
